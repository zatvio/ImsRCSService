.class public final synthetic Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

.field public final synthetic f$1:Lvendor/qti/ims/rcssip/V1_0/configData;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;->f$1:Lvendor/qti/ims/rcssip/V1_0/configData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;->f$1:Lvendor/qti/ims/rcssip/V1_0/configData;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->lambda$handleConfigurationChanged$3$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(Lvendor/qti/ims/rcssip/V1_0/configData;)V

    return-void
.end method
