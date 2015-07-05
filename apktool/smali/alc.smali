.class public final Lalc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalc$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public final c:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lala;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;

.field public final j:J

.field public final k:Lali;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLjava/lang/String;Ljava/lang/String;Lala;Lali;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lalc;->d:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lalc;->e:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lalc;->f:Ljava/lang/String;

    .line 42
    iput-object p9, p0, Lalc;->h:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lalc;->g:Lala;

    .line 44
    iput-object p3, p0, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 45
    iput-object p4, p0, Lalc;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 46
    iput-boolean p5, p0, Lalc;->a:Z

    .line 47
    iput-wide p6, p0, Lalc;->j:J

    .line 48
    iput-object p11, p0, Lalc;->k:Lali;

    .line 49
    iput-object p12, p0, Lalc;->i:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLjava/lang/String;Ljava/lang/String;Lala;Lali;Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p12}, Lalc;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLjava/lang/String;Ljava/lang/String;Lala;Lali;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lalc;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalc;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lalc;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    const-string v0, "[%s %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lalc;->g:Lala;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lalc;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
