.class Lcom/android/phone/CallView$ConferenceListAdapter$1;
.super Ljava/lang/Object;
.source "CallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallView$ConferenceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallView$ConferenceListAdapter;

.field final synthetic val$item:Lcom/android/phone/CallView$ConferenceCallItem;


# direct methods
.method constructor <init>(Lcom/android/phone/CallView$ConferenceListAdapter;Lcom/android/phone/CallView$ConferenceCallItem;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter$1;->this$1:Lcom/android/phone/CallView$ConferenceListAdapter;

    iput-object p2, p0, Lcom/android/phone/CallView$ConferenceListAdapter$1;->val$item:Lcom/android/phone/CallView$ConferenceCallItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter$1;->this$1:Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-object v0, v0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/phone/CallView$ConferenceListAdapter$1;->val$item:Lcom/android/phone/CallView$ConferenceCallItem;

    iget-object v2, v2, Lcom/android/phone/CallView$ConferenceCallItem;->conferenceCallId:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    .line 739
    return-void
.end method
