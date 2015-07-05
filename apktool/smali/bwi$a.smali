.class public final Lbwi$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbwi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lbwi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbwi;-><init>(B)V

    sput-object v0, Lbwi$a;->a:Lbwi;

    return-void
.end method
