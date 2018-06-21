using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OtpNet;
using System.Security.Cryptography;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGenerateSecret_Click(object sender, EventArgs e)
    {
        var hmac = new HMACSHA256();
        var key = Base32Encoding.ToString(hmac.Key);
        txtGeneratedSecret.Text = key;
    }

    long timeWindow;


    protected void btnCreateTOTP_Click(object sender, EventArgs e)
    {
        byte[] secretArray = Base32Encoding.ToBytes(txtEnteredSecret.Text);

        var correction = new TimeCorrection(DateTime.UtcNow);
        TotpState.Totp = new Totp(secretArray, mode: OtpHashMode.Sha256, step: 30, timeCorrection: correction);

        var totpcode = TotpState.Totp.ComputeTotp(DateTime.Now);
        txtTOTPCode.Text = totpcode;
    }

    protected void btnCheckTiming_Click(object sender, EventArgs e)
    {
        try
        {
            int remainingTime = TotpState.Totp.RemainingSeconds();
            ClientScript.RegisterStartupScript(GetType(), "myalert", "alert('" + remainingTime + "');", true);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "myalert", "alert('" + ex.Message + "');", true);
        }
    }


    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        if (TotpState.Totp.VerifyTotp(txtConfirmTotp.Text, out timeWindow, VerificationWindow.RfcSpecifiedNetworkDelay))
        {
            ClientScript.RegisterStartupScript(GetType(), "myalert", "alert('" + "Correct Auth Code" + "');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "myalert", "alert('" + "Failed Auth Code" + "');", true);
        }
    }
}