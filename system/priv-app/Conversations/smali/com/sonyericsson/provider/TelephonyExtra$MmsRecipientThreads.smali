.class public Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;
.super Ljava/lang/Object;
.source "TelephonyExtra.java"

# interfaces
.implements Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/TelephonyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecipientThreads"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GROUP_CONTENT_URI:Landroid/net/Uri;

.field public static final GROUP_RECIPIENTS_CONVERSATIONS_PATH:Ljava/lang/String; = "group-recipients-conversations"

.field public static final RECIPIENT_CONVERSATIONS_PATH:Ljava/lang/String; = "recipient-conversations"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "recipient-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group-recipients-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->GROUP_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUriForMessage(J)Landroid/net/Uri;
    .locals 2
    .param p0, "messageId"    # J

    .prologue
    .line 52
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "recipient-conversations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getContentUriForMmsMessage(J)Landroid/net/Uri;
    .locals 1
    .param p0, "messageId"    # J

    .prologue
    .line 57
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
