using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OtpNet;

/// <summary>
/// Summary description for TotpState
/// </summary>
public static class TotpState
{
    //Public class declaration so i can refer to it constantly.
    public static Totp Totp { get; set; }
}