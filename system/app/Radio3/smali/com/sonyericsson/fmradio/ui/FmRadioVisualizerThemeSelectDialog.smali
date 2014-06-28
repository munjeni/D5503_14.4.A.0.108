.class Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;
.super Ljava/lang/Object;
.source "FmRadioVisualizerThemeSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmRadioVisualizerThemeSelectDialog"


# instance fields
.field private final STRING_RESID_ARRAY:[I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

.field private final mThemes:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->STRING_RESID_ARRAY:[I

    .line 33
    new-array v0, v1, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Gate:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Glow:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Animal:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Balloon:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mThemes:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .line 38
    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    .line 41
    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    .line 47
    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mListener:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    .line 111
    return-void

    .line 25
    :array_0
    .array-data 4
        0x7f050012
        0x7f050013
        0x7f050015
        0x7f050016
        0x7f050014
    .end array-data
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 50
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "FmRadioVisualizerThemeSelectDialog"

    aput-object v6, v5, v7

    const-string v6, "initialize"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mListener:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f050011

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->STRING_RESID_ARRAY:[I

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/String;

    .line 59
    .local v4, "stringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->STRING_RESID_ARRAY:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;->getVisualizeTheme(Landroid/content/Context;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v2

    .line 65
    .local v2, "currentTheme":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "FmRadioVisualizerThemeSelectDialog"

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 67
    const/4 v3, 0x0

    .line 70
    .local v3, "selectedItem":I
    sget-object v5, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-ne v2, v5, :cond_2

    .line 71
    const/4 v3, 0x0

    .line 82
    :cond_1
    :goto_1
    invoke-virtual {v0, v4, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    .line 84
    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    iget-object v7, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    return-void

    .line 72
    :cond_2
    sget-object v5, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Gate:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-ne v2, v5, :cond_3

    .line 73
    const/4 v3, 0x1

    goto :goto_1

    .line 74
    :cond_3
    sget-object v5, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Glow:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-ne v2, v5, :cond_4

    .line 75
    const/4 v3, 0x2

    goto :goto_1

    .line 76
    :cond_4
    sget-object v5, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Animal:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-ne v2, v5, :cond_5

    .line 77
    const/4 v3, 0x3

    goto :goto_1

    .line 78
    :cond_5
    sget-object v5, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Balloon:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-ne v2, v5, :cond_1

    .line 79
    const/4 v3, 0x4

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "selectedTheme":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-ltz p2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mThemes:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    aget-object v0, v1, p2

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FmRadioVisualizerThemeSelectDialog"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerPreference;->setVisualizerTheme(Landroid/content/Context;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mListener:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;->onNotifyUXThemeChanged(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public setUXThemeSelectDialogListener(Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mListener:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;

    .line 109
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 90
    return-void
.end method
