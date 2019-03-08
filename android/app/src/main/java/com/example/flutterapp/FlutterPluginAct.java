package com.example.flutterapp;

import android.app.Activity;
import android.arch.lifecycle.Observer;

import java.util.concurrent.TimeUnit;

import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.PluginRegistry;

/**
 * @author ddc
 * 邮箱: 931952032@qq.com
 * <p>description://原生跳转Flutter 页面
 */
public class FlutterPluginAct implements EventChannel.StreamHandler {

    public static String CHANNEL = "com.example.flutterapp/goflutter";
    static EventChannel channel;
    private Activity activity;

    private FlutterPluginAct(Activity activity) {
        this.activity = activity;
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        channel = new EventChannel(registrar.messenger(), CHANNEL);
        FlutterPluginAct act = new FlutterPluginAct(registrar.activity());
        channel.setStreamHandler(act);
    }

    @Override
    public void onListen(Object o, EventChannel.EventSink eventSink) {
        eventSink.success("123");
    }

    @Override
    public void onCancel(Object o) {

    }
}
