package com.jhonsu01.quizgame;

import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        WebView webView = findViewById(R.id.webview);
        WebSettings webSettings = webView.getSettings();

        // Habilitar JavaScript (ya estaba hecho, pero es crucial)
        webSettings.setJavaScriptEnabled(true);

        // Permitir almacenamiento en el DOM (importante para juegos que guardan estado)
        webSettings.setDomStorageEnabled(true);

        // Permitir la reproducción automática de audio y video, común en juegos
        webSettings.setMediaPlaybackRequiresUserGesture(false);

        webView.setWebViewClient(new WebViewClient());

        // Cargar la URL correcta de tu juego
        webView.loadUrl("https://jhonsu01.github.io/Prototipo-de-juego-interactivo/quiz_game.html");
    }
}
