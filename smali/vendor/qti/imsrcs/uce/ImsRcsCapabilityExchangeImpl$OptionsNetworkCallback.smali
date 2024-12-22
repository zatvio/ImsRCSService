.class Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;
.super Ljava/lang/Object;
.source "ImsRcsCapabilityExchangeImpl.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsNetworkCallback"
.end annotation


# instance fields
.field mTransactionId:I

.field final synthetic this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;I)V
    .locals 0
    .param p2, "tid"    # I

    .line 443
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->mTransactionId:I

    .line 445
    return-void
.end method


# virtual methods
.method public onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .locals 7
    .param p1, "caps"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isBlackList"    # Z

    .line 448
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 449
    .local v0, "fts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->mTransactionId:I

    const/16 v3, 0xc8

    const-string v4, "OK"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v6, p2

    invoke-static/range {v1 .. v6}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->access$000(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;IILjava/lang/String;Ljava/util/List;Z)V

    .line 450
    return-void
.end method

.method public onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, "fts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;->mTransactionId:I

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->access$000(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;IILjava/lang/String;Ljava/util/List;Z)V

    .line 456
    return-void
.end method
