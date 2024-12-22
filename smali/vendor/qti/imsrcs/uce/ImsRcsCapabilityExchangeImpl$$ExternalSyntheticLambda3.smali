.class public final synthetic Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;IILjava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    iput-boolean p6, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    iget-boolean v5, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;->f$5:Z

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->lambda$respondToIncomingOptions$3$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(IILjava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
