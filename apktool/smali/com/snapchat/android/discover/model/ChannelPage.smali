.class public Lcom/snapchat/android/discover/model/ChannelPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/ChannelPage$a;,
        Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ChannelPage"

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    .line 515
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$2;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/ChannelPage$2;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:Ljava/util/Map;

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 124
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/snapchat/android/discover/model/MediaState;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    .line 61
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 69
    :goto_0
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    .line 76
    :goto_1
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->f:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    .line 77
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->g:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    .line 78
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->m:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 79
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->n:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 80
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    .line 81
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->p:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    .line 82
    iget-boolean v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->l:Z

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->w:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->x:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_2
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->z:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage$a;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Lcom/snapchat/android/discover/model/ChannelPage$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_3

    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    :goto_4
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 3
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/discover/model/ChannelPage$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/model/ChannelPage$1;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;)V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Latt;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:Ljava/util/Map;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final l()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final m()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final n()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 504
    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method
