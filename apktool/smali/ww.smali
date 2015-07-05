.class public final Lww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# instance fields
.field private final a:Lajm;

.field private final b:Loh;

.field private final c:Lwz;

.field private final d:Lazo;

.field private final e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;


# direct methods
.method public constructor <init>(Lwz;Lajm;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loh;)V
    .locals 6

    .prologue
    .line 28
    new-instance v5, Lazo;

    invoke-direct {v5}, Lazo;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lww;-><init>(Lwz;Lajm;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loh;Lazo;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lwz;Lajm;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loh;Lazo;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lww;->a:Lajm;

    .line 37
    iput-object p4, p0, Lww;->b:Loh;

    .line 38
    iput-object p3, p0, Lww;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 39
    iput-object p1, p0, Lww;->c:Lwz;

    .line 40
    iput-object p5, p0, Lww;->d:Lazo;

    .line 41
    return-void
.end method


# virtual methods
.method public final done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lww;->b:Loh;

    iget-object v1, p0, Lww;->a:Lajm;

    iget-object v2, p0, Lww;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0, v1, v2, p1}, Loh;->a(Lajm;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 46
    iget-object v0, p0, Lww;->c:Lwz;

    iget-object v1, p0, Lww;->a:Lajm;

    invoke-virtual {v0, v1, p1}, Lwz;->a(Lajm;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 48
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lww;->d:Lazo;

    new-instance v1, Loc;

    invoke-direct {v1, p1}, Loc;-><init>(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    invoke-virtual {v0, v1}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 50
    const-string v0, "TranscodingDone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transcoding failed. Status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method
