.class Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$3;
.super Ljava/lang/Object;
.source "SettingsTwoPaneController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->getDimLayer(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method
