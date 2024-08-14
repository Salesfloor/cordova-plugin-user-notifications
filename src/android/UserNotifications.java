package cordova.plugin;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class UserNotifications extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
        if (action.equals("removeAllDelivered")) {
            removeAllDelivered();
            // callbackContext.success("removeAllDelivered executed" + data.getString(0));
            callbackContext.success("removeAllDelivered executed");
            return true;
        } else {
            return false;
        }
    }

    private void removeAllDelivered() {
        // TODO: implement method
    }


}