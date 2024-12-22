.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iput-wide p2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$1:J

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$2:Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

    iput-object p5, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iget-wide v1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$1:J

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$2:Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleSipResonse$4$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V

    return-void
.end method
