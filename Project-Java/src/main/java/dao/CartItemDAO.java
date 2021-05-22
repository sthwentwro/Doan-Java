package dao;
import java.util.ArrayList;
import java.util.List;
import entity.CartItem;

public class CartItemDAO{
	private ArrayList alCartItems = new ArrayList();
    private double dblOrderTotal;

    public int getLineItemCount() {
        return alCartItems.size();
    }


    public void updateCartItem(String strItemIndex, String strQuantity) {
        long dblTotalCost = 0;
        long dblUnitCost = 0;
        int iQuantity = 0;
        int iItemIndex = 0;
        CartItem cartItem = null;
        try {
            iItemIndex = Integer.parseInt(strItemIndex);
            iQuantity = Integer.parseInt(strQuantity);
            if (iQuantity > 0) {
                cartItem = (CartItem) alCartItems.get(iItemIndex - 1);
                dblUnitCost = cartItem.getDongia();
                dblTotalCost = dblUnitCost * iQuantity;
                cartItem.setQuantity(iQuantity);
                cartItem.setTongphu(dblTotalCost);
                calculateOrderTotal();
            }
        } catch (NumberFormatException nfe) {
            System.out.println("Error while updating cart: " + nfe.getMessage());
            nfe.printStackTrace();
        }

    }




    public CartItem getCartItem(int iItemIndex) {
        CartItem cartItem = null;
        if (alCartItems.size() > iItemIndex) {
            cartItem = (CartItem) alCartItems.get(iItemIndex);
        }
        return cartItem;
    }

    public ArrayList getCartItems() {
        return alCartItems;
    }

    public void setCartItems(ArrayList alCartItems) {
        this.alCartItems = alCartItems;
    }

    public double getOrderTotal() {
        return dblOrderTotal;
    }

    public void setOrderTotal(double dblOrderTotal) {
        this.dblOrderTotal = dblOrderTotal;
    }

    protected void calculateOrderTotal() {
        double dblTotal = 0;
        for (int counter = 0; counter < alCartItems.size(); counter++) {
            CartItem cartItem = (CartItem) alCartItems.get(counter);
            dblTotal += cartItem.getTongphu();

        }
        setOrderTotal(dblTotal);
    }
}