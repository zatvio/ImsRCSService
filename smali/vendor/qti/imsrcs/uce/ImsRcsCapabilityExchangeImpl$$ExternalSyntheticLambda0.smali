.class public final synthetic Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field public final synthetic f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

.field public final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    iput-object p3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->lambda$subscribeForCapabilities$2$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Ljava/util/Collection;)V

    return-void
.end method
