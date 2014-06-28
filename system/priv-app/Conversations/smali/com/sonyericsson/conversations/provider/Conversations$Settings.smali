.class public final Lcom/sonyericsson/conversations/provider/Conversations$Settings;
.super Ljava/lang/Object;
.source "Conversations.java"

# interfaces
.implements Lcom/sonyericsson/conversations/provider/Conversations$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/provider/Conversations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://com.sonyericsson.conversations/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/provider/Conversations$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
