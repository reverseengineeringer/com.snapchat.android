.class final Lapp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lakk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lapp;-><init>(Ljava/util/List;Lakk;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lakk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;",
            "Lakk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lapp;->a:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lapp;->b:Lakk;

    .line 29
    return-void
.end method
