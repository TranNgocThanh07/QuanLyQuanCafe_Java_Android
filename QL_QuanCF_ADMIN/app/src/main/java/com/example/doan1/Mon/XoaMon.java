package com.example.doan1.Mon;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.doan1.Connect.Connect;
import com.example.doan1.LoaiMon.LoaiMon_Activity;
import com.example.doan1.LoaiMon.XoaLoai;
import com.example.doan1.R;

import java.util.HashMap;
import java.util.Map;

public class XoaMon extends AppCompatActivity {
    private EditText edtMaMon;

    String url = "http://" + Connect.connectip + "/DoAn_Android/Xoa_Mon.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_xoa_mon);

        edtMaMon=findViewById(R.id.edtmamon);
        Button btnRemove = (Button) findViewById(R.id.btnRemove);
        btnRemove.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getData(
                        edtMaMon.getText().toString()
                );
            }
        });
    }
    public void getData(String mamon) {
        RequestQueue requestQueue = Volley.newRequestQueue(XoaMon.this);
        StringRequest request = new StringRequest(Request.Method.POST, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                if (response.trim().equals("success")) {
                    Toast.makeText(XoaMon.this, "Xóa thành công", Toast.LENGTH_SHORT).show();
                    finish();
                    Intent intent = new Intent(XoaMon.this, Mon_Activity.class);
                    intent.putExtra("REFRESH_DATA", true);
                    startActivity(intent);
                } else if (response.trim().equals("exist")) {
                    Toast.makeText(XoaMon.this, "Mã món không tồn tại", Toast.LENGTH_SHORT).show();
                } else {
                    Toast.makeText(XoaMon.this, "Có lỗi xảy ra", Toast.LENGTH_SHORT).show();
                    Log.e("Lỗi phản hồi", "Có lỗi xảy ra: " + response.trim());
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(XoaMon.this, "Xảy ra lỗi, vui lòng thử lại.", Toast.LENGTH_SHORT).show();
            }
        }) {
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String, String> params = new HashMap<>();
                params.put("MaMon", mamon);
                return params;
            }
        };
        requestQueue.add(request);
    }
}