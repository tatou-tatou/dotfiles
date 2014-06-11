def sendNotification(directory, filename, rssItemNode, retrievedLink, downloadDict, threadName):
    import os
    if not 'DISPLAY' in os.environ:
        os.environ['DISPLAY'] = ':0'
    from gi.repository import Notify
    Notify.init ("New torrent")
    Message=Notify.Notification.new ("New torrent", filename,"/home/tatou/.icons/Pixelfaker/apps/48x48/rss.png")
    Message.show ()
