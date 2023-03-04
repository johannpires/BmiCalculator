package com.example.myfirstprojectandroid

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.MenuItem
import android.widget.TextView

class ResultActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_result)

        supportActionBar?.setHomeButtonEnabled(true)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        val tvResult = findViewById<TextView>(R.id.textview_result)
        val tvClassificacao = findViewById<TextView>(R.id.textview_classificacao)
        val tvTabela = findViewById<TextView>(R.id.textview_tabela)

        val result = intent.getFloatExtra("EXTRA_RESULT", 0.1f)

        tvResult.text = result.toString()

        val classificacao = if (result < 18.5f) {
            "Underweight"
        } else if (result in 18.5f..24.9f) {
            "Healthy Weight"
        } else if (result in 25f..29.9f) {
            "Overweight"
            // O Kotlin facilita com o "in" essa expressao que de outra maneira se escreveria com a logica abaixo
        } else if (result >= 30f && result < 34.9f) {
            "Obesity I"
        } else if (result in 35f..39.9f) {
            "Obesity II"
        } else{
            "Obesity III"
        }

        tvClassificacao.text = getString(R.string.message_classificacao, classificacao)
        tvTabela.text = result.toString()

    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        finish()
        return super.onOptionsItemSelected(item)
    }

}