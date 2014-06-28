.class public Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 207
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 208
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 209
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 210
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 220
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 222
    const v2, 0x7f0800cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 223
    .local v0, "banner":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method
