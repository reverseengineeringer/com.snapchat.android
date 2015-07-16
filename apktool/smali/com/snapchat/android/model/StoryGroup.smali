.class public Lcom/snapchat/android/model/StoryGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StoryGroup$ActionState;,
        Lcom/snapchat/android/model/StoryGroup$a;,
        Lcom/snapchat/android/model/StoryGroup$b;
    }
.end annotation


# instance fields
.field public transient mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

.field private final transient mAllStorySnapLogbooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field public transient mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

.field protected mCustomDescription:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public transient mSaveProgress:I

.field protected mShouldFetchCustomDescription:Z

.field public mStoryId:Ljava/lang/String;

.field public mStorySnapLogbooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    .line 52
    return-void
.end method

.method public constructor <init>(Lbjm;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    .line 64
    invoke-virtual {p1}, Lbjm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lbjm;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lbjm;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup;->mShouldFetchCustomDescription:Z

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    invoke-virtual {p1}, Lbjm;->c()Ljava/util/List;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjo;

    .line 71
    new-instance v2, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v2, v0}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lbjo;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    iput-object v0, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/StoryGroup$a;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    .line 79
    iget-object v0, p1, Lcom/snapchat/android/model/StoryGroup$a;->mStoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/snapchat/android/model/StoryGroup$a;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    .line 81
    iget-boolean v0, p1, Lcom/snapchat/android/model/StoryGroup$a;->mShouldFetchCustomDescription:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup;->mShouldFetchCustomDescription:Z

    .line 82
    iget-object v0, p1, Lcom/snapchat/android/model/StoryGroup$a;->mCustomDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public synthetic constructor <init>(Lcom/snapchat/android/model/StoryGroup$a;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lcom/snapchat/android/model/StoryGroup$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$b;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StoryGroup$b;->a(Lcom/snapchat/android/model/StoryGroup;)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-static {v0, v3}, Lavr;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-static {v1, v2}, Lavr;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 248
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save progress out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    iput p1, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 254
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 255
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/StoryGroup$ActionState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "actionState is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-eq v0, p1, :cond_2

    .line 225
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 227
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-eq p1, v0, :cond_1

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 233
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 120
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup;->mShouldFetchCustomDescription:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laki;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laki;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final k()I
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Laki;->a()Laki;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laki;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laki;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 168
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    return-object v1
.end method
