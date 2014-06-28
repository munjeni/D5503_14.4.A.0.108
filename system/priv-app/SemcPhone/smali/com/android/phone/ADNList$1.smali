.class Lcom/android/phone/ADNList$1;
.super Ljava/lang/Object;
.source "ADNList.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ADNList;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 153
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 154
    if-ne p3, v1, :cond_1

    .line 155
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "number":Ljava/lang/String;
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 158
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
