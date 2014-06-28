.class public Lcom/android/phone/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Constants$NumberConversionInfo;,
        Lcom/android/phone/Constants$CallStatusCode;
    }
.end annotation


# static fields
.field static final sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/android/phone/Constants$NumberConversionInfo;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "110"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "119"

    aput-object v3, v1, v2

    const-string v2, "112"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$NumberConversionInfo;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/Constants;->sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method
