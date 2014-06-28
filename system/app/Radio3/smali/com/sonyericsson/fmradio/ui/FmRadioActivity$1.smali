.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-static {v1}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;->getVisualizeTheme(Landroid/content/Context;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v0

    .line 264
    .local v0, "theme":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    new-instance v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1$1;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method
