.class public interface abstract Lbpd$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Lbpd$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lbpd$f$1;

    invoke-direct {v0}, Lbpd$f$1;-><init>()V

    sput-object v0, Lbpd$f;->a:Lbpd$f;

    return-void
.end method


# virtual methods
.method public abstract a(Lbpg;)Lbpg;
.end method
