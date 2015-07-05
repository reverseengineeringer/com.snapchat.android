.class public abstract Lus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lur;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lur",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final b:Lus$a;


# direct methods
.method public constructor <init>(Lur;Lus$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lur",
            "<TT;>;",
            "Lus$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lus;->a:Lur;

    .line 21
    iput-object p2, p0, Lus;->b:Lus$a;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Z
.end method
