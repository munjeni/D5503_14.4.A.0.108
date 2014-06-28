.class public interface abstract Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreadsColumns;
.super Ljava/lang/Object;
.source "TelephonyExtra.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/TelephonyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MmsRecipientThreadsColumns"
.end annotation


# static fields
.field public static final DELIVERY_STATUS:Ljava/lang/String; = "delivery_status"

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final PARENT_THREAD_ID:Ljava/lang/String; = "parent_thread_id"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"
