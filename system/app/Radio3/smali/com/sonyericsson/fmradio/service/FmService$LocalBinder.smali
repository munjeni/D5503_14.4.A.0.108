.class public Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;
.super Landroid/os/Binder;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/service/FmService;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;->this$0:Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sonyericsson/fmradio/service/FmService;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;->this$0:Lcom/sonyericsson/fmradio/service/FmService;

    return-object v0
.end method
