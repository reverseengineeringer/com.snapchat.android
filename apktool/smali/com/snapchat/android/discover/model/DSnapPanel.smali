.class public final Lcom/snapchat/android/discover/model/DSnapPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DSnapPanel$a;,
        Lcom/snapchat/android/discover/model/DSnapPanel$Docking;,
        Lcom/snapchat/android/discover/model/DSnapPanel$Mode;,
        Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final e:Lbjx;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final h:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final i:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final j:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/model/DSnapPanel$a;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 118
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->i:Lbjx;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->e:Lbjx;

    .line 119
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 120
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->h:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 121
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 122
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->h:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->j:Lcom/snapchat/android/discover/model/MediaState;

    .line 123
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Ljava/lang/String;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/DSnapPanel$a;B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapPanel;-><init>(Lcom/snapchat/android/discover/model/DSnapPanel$a;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DSnapPanel-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
