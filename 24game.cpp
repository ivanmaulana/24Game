// @author   : Ivan Maulana Putra - Punto Nugroho
// @nim      : G64130076 - G64130052
// @project  : The 24 Game. How you find the way to get result = 24.

#include <iostream>

using namespace std;

void hitung(float a, float b, float c, float d)
{
    float l, m, o, q;
    char n, p, r;
    float result1, result2, result3, result = 0;
    for (int i=0; i<4; i++)
    {
        result = 0;
        l = a;
        m = b;
        if (i==0) result1 = a + b;
        else if (i==1) result1 = a - b;
        else if (i==2) result1 = a * b;
        else result1 = a / b;
        if (i==0) n = '+';
        else if (i==1) n = '-';
        else if (i==2) n = '*';
        else n = '/';

        for (int j=0; j<4; j++)
        {
            if (j==0) result2 = result1 + c;
            else if (j==1) result2 = result1 - c;
            else if (j==2) result2 = result1 * c;
            else result2 = result1 / c;
            o = c;
            if (j==0) p = '+';
                else if (j==1) p = '-';
                else if (j==2) p = '*';
                else p = '/';

            for (int k=0; k<4; k++)
            {
                if (k==0) result = result2 + d;
                else if (k==1) result = result2 - d;
                else if (k==2) result = result2 * d;
                else result = result2 / d;
                q = d;
                if (k==0) r = '+';
                    else if (k==1) r = '-';
                    else if (k==2) r = '*';
                    else r = '/';

                if (result==24)
                {
                    cout << l << " " << m << " " << n << " " << o << " " << p << " " << q << " " << r;
                    cout << endl;
                }
            }
        }
    }
}

void hitung2(float a, float b, float c, float d)
{
    float l, m, o, p;
    char n, q, r;
    float result1, result2, result3, result = 0;
    for (int i=0; i<4; i++)
    {
        result = 0;
        l = a;
        m = b;
        if (i==0) result1 = a + b;
        else if (i==1) result1 = a - b;
        else if (i==2) result1 = a * b;
        else result1 = a / b;
        if (i==0) n = '+';
        else if (i==1) n = '-';
        else if (i==2) n = '*';
        else n = '/';

        for (int j=0; j<4; j++)
        {
            if (j==0) result2 = c + d;
            else if (j==1) result2 = c - d;
            else if (j==2) result2 = c * d;
            else result2 = c / d;
            o = c;
            p = d;
            if (j==0) q = '+';
                else if (j==1) q = '-';
                else if (j==2) q = '*';
                else q = '/';

            for (int k=0; k<4; k++)
            {
                if (k==0) result = result1 + result2;
                else if (k==1) result = result1 - result2;
                else if (k==2) result = result1 * result2;
                else result = result1 / result2;
                if (k==0) r = '+';
                    else if (k==1) r = '-';
                    else if (k==2) r = '*';
                    else r = '/';

                if (result==24)
                {
                    cout << l << " " << m << " " << n << " " << o << " " << p << " " << q << " " << r;
                    cout << endl;
                }
            }
        }
    }
}

int main() {
    float a,b,c,d, w,x,y,z;
    float l, m, o, q;
    char n, p, r;

    int result;

    cout << "Masukkan Angka : ";
    cin >> a >> b >> c >> d;
    cout << endl;

    hitung (a, b, c, d);
    hitung (a, b, d, c);
    hitung (a, c, b, d);
    hitung (a, c, d, b);
    hitung (a, d, b, c);
    hitung (a, d, c, b);

    hitung (b, a, c, d);
    hitung (b, a, d, c);
    hitung (b, c, a, d);
    hitung (b, c, d, a);
    hitung (b, d, a, c);
    hitung (b, d, c, a);

    hitung (c, b, a, d);
    hitung (c, b, d, a);
    hitung (c, a, b, d);
    hitung (c, a, d, b);
    hitung (c, d, a, b);
    hitung (c, d, b, a);

    hitung (d, b, c, a);
    hitung (d, b, a, c);
    hitung (d, c, b, a);
    hitung (d, c, a, b);
    hitung (d, a, b, c);
    hitung (d, a, c, b);

    hitung2 (a, b, c, d);
    hitung2 (a, b, d, c);
    hitung2 (a, c, b, d);
    hitung2 (a, c, d, b);
    hitung2 (a, d, b, c);
    hitung2 (a, d, c, b);

    hitung2 (b, a, c, d);
    hitung2 (b, a, d, c);
    hitung2 (b, c, a, d);
    hitung2 (b, c, d, a);
    hitung2 (b, d, a, c);
    hitung2 (b, d, c, a);

    hitung2 (c, b, a, d);
    hitung2 (c, b, d, a);
    hitung2 (c, a, b, d);
    hitung2 (c, a, d, b);
    hitung2 (c, d, a, b);
    hitung2 (c, d, b, a);

    hitung2 (d, b, c, a);
    hitung2 (d, b, a, c);
    hitung2 (d, c, b, a);
    hitung2 (d, c, a, b);
    hitung2 (d, a, b, c);
    hitung2 (d, a, c, b);

    return 0;
}
