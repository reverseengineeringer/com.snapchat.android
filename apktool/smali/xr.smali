.class public final Lxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# instance fields
.field private final a:Laku;

.field private final b:Loy;

.field private final c:Lxu;

.field private final d:Lban;

.field private final e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;


# direct methods
.method public constructor <init>(Lxu;Laku;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loy;)V
    .locals 6

    .prologue
    .line 28
    new-instance v5, Lban;

    invoke-direct {v5}, Lban;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lxr;-><init>(Lxu;Laku;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loy;Lban;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lxu;Laku;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Loy;Lban;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lxr;->a:Laku;

    .line 37
    iput-object p4, p0, Lxr;->b:Loy;

    .line 38
    iput-object p3, p0, Lxr;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 39
    iput-object p1, p0, Lxr;->c:Lxu;

    .line 40
    iput-object p5, p0, Lxr;->d:Lban;

    .line 41
    return-void
.end method


# virtual methods
.method public final done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lxr;->b:Loy;

    iget-object v1, p0, Lxr;->a:Laku;

    iget-object v2, p0, Lxr;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0, v1, v2, p1}, Loy;->a(Laku;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 46
    iget-object v0, p0, Lxr;->c:Lxu;

    iget-object v1, p0, Lxr;->a:Laku;

    invoke-virtual {v0, v1, p1}, Lxu;->a(Laku;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 48
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lxr;->d:Lban;

    new-instance v1, Lot;

    invoke-direct {v1, p1}, Lot;-><init>(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    invoke-virtual {v0, v1}, Lban;->a(Ljava/lang/Throwable;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transcoding failed. Status : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    return-void
.end method
