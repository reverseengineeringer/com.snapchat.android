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
    .annotation build Lchc;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lchd;
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

.field private final o:I

.field private p:Ljava/util/Map;
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

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/Map;
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

    .line 533
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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/util/Map;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 126
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 127
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/snapchat/android/discover/model/MediaState;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 121
    goto :goto_0

    .line 131
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    .line 62
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 70
    :goto_0
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    .line 77
    :goto_1
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->f:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    .line 78
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->g:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    .line 79
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->m:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:I

    .line 80
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->n:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 81
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    .line 82
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->q:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    .line 83
    iget-boolean v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->l:Z

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->r:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->u:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->x:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->z:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_2
    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->o:I

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 109
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage$a;->A:Lcom/snapchat/android/discover/model/MediaState;

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
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 182
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
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
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
    .annotation build Lawj;
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
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Laur;

    invoke-direct {v0}, Laur;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/discover/model/ChannelPage$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/model/ChannelPage$1;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;)V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laur;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/util/Map;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->p:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INTRO_VIDEO:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final l()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final m()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public final n()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 284
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
    .line 301
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
    .line 332
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

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 527
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->r:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 521
    goto :goto_0

    .line 531
    :cond_1
    return-void
.end method
