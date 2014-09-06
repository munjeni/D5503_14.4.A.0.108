.class Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageExplanatoryDialogListener"
.end annotation


# instance fields
.field private mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V
    .locals 0
    .param p1, "shardPrefs"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .prologue
    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1422
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .line 1423
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, "isShow":Z
    if-eqz p2, :cond_0

    .line 1434
    const/4 v0, 0x1

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    const-string v2, "4K2K_EXPLANATORY_DISABLED"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Z)V

    .line 1437
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1427
    return-void
.end method
