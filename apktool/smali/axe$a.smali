.class public final Laxe$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final mLostBitmaps:Ljava/util/List;
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnusedBitmaps:Ljava/util/List;
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsedBitmaps:Ljava/util/List;
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Laxe;


# direct methods
.method public constructor <init>(Laxe;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laxj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Laxe$a;->this$0:Laxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Laxe$a;->mLostBitmaps:Ljava/util/List;

    .line 227
    iput-object p3, p0, Laxe$a;->mUnusedBitmaps:Ljava/util/List;

    .line 228
    iput-object p4, p0, Laxe$a;->mUsedBitmaps:Ljava/util/List;

    .line 229
    return-void
.end method
