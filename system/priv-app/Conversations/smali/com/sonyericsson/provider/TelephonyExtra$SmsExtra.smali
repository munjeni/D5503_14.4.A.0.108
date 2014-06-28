.class public final Lcom/sonyericsson/provider/TelephonyExtra$SmsExtra;
.super Ljava/lang/Object;
.source "TelephonyExtra.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;
.implements Lcom/sonyericsson/provider/TelephonyExtra$SmsExtraColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/TelephonyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsExtra"
.end annotation


# static fields
.field public static final MULTIPLE_DRAFTS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_multiple_drafts"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SmsExtra;->MULTIPLE_DRAFTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
