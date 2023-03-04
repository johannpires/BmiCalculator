package com.example.myfirstprojectandroid

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val BttnCalcular: Button = findViewById<Button>(R.id.edtBttn)
        val edtPeso: EditText = findViewById(R.id.edtPeso)
        val edtAltura: EditText = findViewById(R.id.edtAltura)

        BttnCalcular.setOnClickListener {

            val alturaStr = edtAltura.text.toString()
            val pesoStr = edtPeso.text.toString()

            if (alturaStr.isNotEmpty() && pesoStr.isNotEmpty()) {
                val altura: Float = alturaStr.toFloat()
                val peso: Float = pesoStr.toFloat()

                val alturafinal: Float = altura * altura
                val result: Float = peso / alturafinal

                val intent = Intent(this, ResultActivity::class.java)
                    .apply {
                        putExtra("EXTRA_RESULT", result)
                    }
                startActivity(intent)
            } else {
                Toast.makeText(this, "Fill in all the fields", Toast.LENGTH_LONG).show()
            }
        }
    }
}