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
            return true;
        } else {
            return false;
        }
    }

    private void removeAllDelivered() {
        NotificationManager notificationManager = getSystemService(NotificationManager.class);
        notificationManager.cancelAll();
    }


}