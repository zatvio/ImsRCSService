.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iput-wide p2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    iput-object p5, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iget-wide v1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$2:Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleSipResonse$5$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V

    return-void
.end method
