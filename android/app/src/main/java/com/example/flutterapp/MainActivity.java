package com.example.flutterapp;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        registerCustomPlugin(this);
    }

    private static void registerCustomPlugin(PluginRegistry registrar) {
        AndroidPluginAct.registerWith(registrar.registrarFor(AndroidPluginAct.CHANNEL));
        FlutterPluginAct.registerWith(registrar.registrarFor(FlutterPluginAct.CHANNEL));
    }

}
