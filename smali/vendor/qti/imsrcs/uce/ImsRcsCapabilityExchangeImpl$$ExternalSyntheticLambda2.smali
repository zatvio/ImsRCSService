.class public final synthetic Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field public final synthetic f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    iput-object p3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->lambda$publishCapabilities$0$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;Ljava/lang/String;)V

    return-void
.end method
