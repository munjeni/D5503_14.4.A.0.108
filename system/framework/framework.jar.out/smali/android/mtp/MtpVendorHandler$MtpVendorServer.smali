.class Landroid/mtp/MtpVendorHandler$MtpVendorServer;
.super Ljava/lang/Object;
.source "MtpVendorHandler.java"

# interfaces
.implements Landroid/mtp/IMtpVendorServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpVendorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpVendorServer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpVendorHandler;


# direct methods
.method private constructor <init>(Landroid/mtp/MtpVendorHandler;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler$MtpVendorServer;->this$0:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpVendorHandler;Landroid/mtp/MtpVendorHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/mtp/MtpVendorHandler;
    .param p2, "x1"    # Landroid/mtp/MtpVendorHandler$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Landroid/mtp/MtpVendorHandler$MtpVendorServer;-><init>(Landroid/mtp/MtpVendorHandler;)V

    return-void
.end method


# virtual methods
.method public sendVendorEvent(I[I)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "params"    # [I

    .prologue
    .line 240
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler$MtpVendorServer;->this$0:Landroid/mtp/MtpVendorHandler;

    # invokes: Landroid/mtp/MtpVendorHandler;->native_send_vendor_event(I[I)V
    invoke-static {v0, p1, p2}, Landroid/mtp/MtpVendorHandler;->access$900(Landroid/mtp/MtpVendorHandler;I[I)V

    .line 241
    return-void
.end method

.method public sendVendorResponse(I[I[B)I
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseParams"    # [I
    .param p3, "dataArray"    # [B

    .prologue
    .line 236
    iget-object v0, p0, Landroid/mtp/MtpVendorHandler$MtpVendorServer;->this$0:Landroid/mtp/MtpVendorHandler;

    # invokes: Landroid/mtp/MtpVendorHandler;->native_send_vendor_response(I[I[B)I
    invoke-static {v0, p1, p2, p3}, Landroid/mtp/MtpVendorHandler;->access$800(Landroid/mtp/MtpVendorHandler;I[I[B)I

    move-result v0

    return v0
.end method
