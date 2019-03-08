package com.example.flutterapp;

import android.app.Activity;
import android.content.Intent;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/**
 * @author ddc
 * 邮箱: 931952032@qq.com
 * <p>description: android Flutter跳原生交互页面
 */
public class AndroidPluginAct implements MethodChannel.MethodCallHandler {

    public static String CHANNEL = "com.example.flutterapp/plugin";

    static MethodChannel channel;

    private Activity activity;

    private AndroidPluginAct(Activity activity) {
        this.activity = activity;
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        channel = new MethodChannel(registrar.messenger(), CHANNEL);
        AndroidPluginAct act = new AndroidPluginAct(registrar.activity());
        channel.setMethodCallHandler(act);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("oneAct")) {
            String message = call.argument("flutter");
            Intent intent = new Intent(activity, OneActivity.class);
            intent.putExtra("flutter", message);
            activity.startActivity(intent);
            result.success("success");
        } else {
            result.notImplemented();
        }
    }
}
