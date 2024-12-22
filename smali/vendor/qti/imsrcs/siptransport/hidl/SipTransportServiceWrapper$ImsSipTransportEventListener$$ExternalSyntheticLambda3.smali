.class public final synthetic Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

.field public final synthetic f$1:Lvendor/qti/ims/rcssipaidlservice/ConfigData;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;->f$1:Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;->f$1:Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->lambda$handleConfigurationChanged$4$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V

    return-void
.end method
