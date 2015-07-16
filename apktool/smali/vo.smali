.class public final Lvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Larm",
        "<",
        "Lvt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Larm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Larm",
            "<",
            "Lvs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lvt;

    invoke-virtual {p1, p0}, Lvt;->a(Lvo;)V

    return-void
.end method
