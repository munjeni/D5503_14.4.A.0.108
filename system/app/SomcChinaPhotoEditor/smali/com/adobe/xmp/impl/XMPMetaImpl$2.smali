.class Lcom/adobe/xmp/impl/XMPMetaImpl$2;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/properties/XMPProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPMetaImpl;

.field private final synthetic val$propNode:Lcom/adobe/xmp/impl/XMPNode;

.field private final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->this$0:Lcom/adobe/xmp/impl/XMPMetaImpl;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$propNode:Lcom/adobe/xmp/impl/XMPNode;

    .line 681
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$propNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
