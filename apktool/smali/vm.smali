.class public abstract Lvm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm$a;
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
.field protected final a:Lvl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvl",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final b:Lvm$a;


# direct methods
.method public constructor <init>(Lvl;Lvm$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvl",
            "<TT;>;",
            "Lvm$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lvm;->a:Lvl;

    .line 21
    iput-object p2, p0, Lvm;->b:Lvm$a;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Z
.end method
