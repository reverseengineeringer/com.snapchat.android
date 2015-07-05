.class public final Lals$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Luc;

.field public final b:Ljava/lang/Exception;

.field public final c:I


# direct methods
.method public constructor <init>(Luc;Ljava/lang/Exception;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lals$b;->a:Luc;

    .line 55
    iput-object p2, p0, Lals$b;->b:Ljava/lang/Exception;

    .line 56
    iput p3, p0, Lals$b;->c:I

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lals$b;->b:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lals$b;->a:Luc;

    invoke-virtual {v0}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
