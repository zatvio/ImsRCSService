.class public final synthetic Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

.field public final synthetic f$1:[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$1:[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    iput p3, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$1:[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;->f$2:I

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->lambda$handleDelegateCreation$10$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;I)V

    return-void
.end method
