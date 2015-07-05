.class public interface abstract Lbml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbml;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lbml$1;

    invoke-direct {v0}, Lbml$1;-><init>()V

    sput-object v0, Lbml;->a:Lbml;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method
