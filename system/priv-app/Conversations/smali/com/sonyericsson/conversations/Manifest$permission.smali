.class public final Lcom/sonyericsson/conversations/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final CONVERSATIONS_BROADCAST_NOTIFICATIONS:Ljava/lang/String; = "com.sonyericsson.permission.CONVERSATIONS_BROADCAST_NOTIFICATIONS"

.field public static final CONVERSATIONS_INTERNAL:Ljava/lang/String; = "com.sonyericsson.permission.CONVERSATIONS_INTERNAL"

.field public static final CONVERSATIONS_MESSAGE_NOTIFICATION_SERVICE:Ljava/lang/String; = "com.sonyericsson.permission.CONVERSATIONS_MESSAGE_NOTIFICATION_SERVICE"

.field public static final CONVERSATIONS_RECEIVE_NOTIFICATIONS:Ljava/lang/String; = "com.sonyericsson.permission.CONVERSATIONS_RECEIVE_NOTIFICATIONS"

.field public static final CONVERSATIONS_SETTINGS_PROVIDER:Ljava/lang/String; = "com.sonyericsson.permission.CONVERSATIONS_SETTINGS_PROVIDER"

.field public static final MMS_PUSH:Ljava/lang/String; = "android.permission.MMS_PUSH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
