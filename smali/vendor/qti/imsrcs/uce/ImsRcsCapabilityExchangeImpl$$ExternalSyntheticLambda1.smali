.class public final synthetic Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->lambda$sendOptionsCapabilityRequest$1$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    return-void
.end method
