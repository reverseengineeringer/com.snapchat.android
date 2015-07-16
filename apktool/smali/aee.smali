.class public final Laee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Laee;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbky;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Laee;

    invoke-direct {v0}, Laee;-><init>()V

    sput-object v0, Laee;->b:Laee;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laee;->a:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public static a()Laee;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Laee;->b:Laee;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbky;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbky;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v0, p0, Laee;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Laee;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
