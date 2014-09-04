.class public final Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/util/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listeners"
.end annotation


# static fields
.field private static sDebugListener:Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onCompleteSave()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->sDebugListener:Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->sDebugListener:Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;->onSaveFinished()V

    .line 67
    :cond_0
    return-void
.end method

.method public static final onLoadFinished()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->sDebugListener:Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->sDebugListener:Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/util/Debug$DebugListener;->onLoadFinished()V

    .line 61
    :cond_0
    return-void
.end method
