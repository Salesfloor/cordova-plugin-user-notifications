package cordova.plugin;
import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;
import android.app.NotificationManager;

public class UserNotifications extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
        if (action.equals("removeAllDelivered")) {
            removeAllDelivered();
            callbackContext.success();
            return true;
        }
        return false;
    }

    private void removeAllDelivered() {
        NotificationManager notificationManager = cordova.getActivity().getSystemService(NotificationManager.class);
        notificationManager.cancelAll();
    }


}