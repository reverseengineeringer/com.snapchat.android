.class public interface abstract Landroid/media/MediaTimeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    }
.end annotation


# static fields
.field public static final NO_TIME:J = -0x1L


# virtual methods
.method public abstract cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract getCurrentTimeUs(ZZ)J
.end method

.method public abstract notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method

.method public abstract scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
.end method
